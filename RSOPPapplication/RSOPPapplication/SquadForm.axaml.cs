﻿using System.Collections.Generic;
using Avalonia;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Markup.Xaml;
using MySql.Data.MySqlClient;

namespace RSOPPapplication;

public partial class SquadForm : Window
{
    public SquadForm()
    {
        InitializeComponent();
        string fullTableShow = "SELECT * FROM squad;";
        ShowTable(fullTableShow);
    }
    
    private List<Squad> squad;
    private string connString = "server=localhost;database=rsopp;User Id=root;password=landoNorris4";
    private MySqlConnection conn;
    
    private void ShowTable(string sql)
    {
        squad = new List<Squad>();
        conn = new MySqlConnection(connString);
        conn.Open();
        MySqlCommand command = new MySqlCommand(sql, conn);
        MySqlDataReader reader = command.ExecuteReader();
        while (reader.Read() && reader.HasRows)
        {
            var fullsquad = new Squad()
            {
                ID = reader.GetInt32("ID"),
                Name = reader.GetString("Name"),
                ID_Specialization = reader.GetInt32("ID_Specialization"),
                ID_Staff = reader.GetInt32("ID_Staff")
            };
            squad.Add(fullsquad);
        }
        conn.Close();
        SquadGrid.ItemsSource = squad;
    }

    private void BackToMenu(object? sender, RoutedEventArgs e)
    {
        MainMenu menu = new MainMenu();
        Close();
        menu.Show();
    }
}