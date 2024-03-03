﻿using System.Collections.Generic;
using Avalonia;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Markup.Xaml;
using MySql.Data.MySqlClient;

namespace RSOPPapplication;

public partial class LaureateForm : Window
{
    public LaureateForm()
    {
        InitializeComponent();
        string fullTableShow = "SELECT * FROM laureate;";
        ShowTable(fullTableShow);
    }
    private List<Laureate> laureate;
    private string connString = "server=localhost;database=rsopp;User Id=root;password=landoNorris4";
    private MySqlConnection conn;
    private void ShowTable(string sql)
    {
        laureate = new List<Laureate>();
        conn = new MySqlConnection(connString);
        conn.Open();
        MySqlCommand command = new MySqlCommand(sql, conn);
        MySqlDataReader reader = command.ExecuteReader();
        while (reader.Read() && reader.HasRows)
        {
            var fulllaureate = new Laureate()
            {
                ID = reader.GetInt32("ID"),
                Surname = reader.GetString("Surname"),
                Name = reader.GetString("Name"),
                ID_Award = reader.GetInt32("ID_Award"),
                ID_Staff = reader.GetInt32("ID_Staff")
            };
            laureate.Add(fulllaureate);
        }
        conn.Close();
        LaureateGrid.ItemsSource = laureate;
    }

    private void BackToMenu(object? sender, RoutedEventArgs e)
    {
        MainMenu menu = new MainMenu();
        Close();
        menu.Show();
    }
}