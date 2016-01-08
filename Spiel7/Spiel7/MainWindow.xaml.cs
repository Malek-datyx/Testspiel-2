using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApplication2
{
    // Test
    /// <summary>
    /// Interaktionslogik für MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        System.Windows.Threading.DispatcherTimer timer = new System.Windows.Threading.DispatcherTimer();
        public MainWindow()
        {
            InitializeComponent();

            timer.Tick += physics;
            timer.Interval = TimeSpan.FromSeconds(0.05);

        }
      
        private void radioButtonRed_Click(object sender, RoutedEventArgs e)
        {
            ball.Fill = Brushes.Red;
        }

        private void radioButtonBlue_Click(object sender, RoutedEventArgs e)
        {
            ball.Fill = Brushes.Blue;
        }


        private void radioButtonGreen_Click(object sender, RoutedEventArgs e)
        {
            ball.Fill = Brushes.Green;
        }

        private void ButtonStartStop_Click(object sender, RoutedEventArgs e)
        {
            timer.IsEnabled = !timer.IsEnabled;
        }

        bool goingRight = true;
        bool goingDown = true;

        void physics(object sender, EventArgs e)
        {

            double v = 5.0;
            if (checkBoxFast.IsChecked.Value)
            {
                v = 10.0;
            }

            double x = Canvas.GetLeft(ball);
            if (goingRight)
            {
                x += v;
            }
            else
            {
                x -= v;
            }
            if (x + ball.Width > theCanvas.ActualWidth)
            {
                goingRight = false;
                x = theCanvas.ActualWidth - ball.Width;
                System.Media.SystemSounds.Hand.Play();
            }

            else if (x < 0.0)
            {
                goingRight = true;
                x = 0.0;
                System.Media.SystemSounds.Hand.Play();
            }

            Canvas.SetLeft(ball, x);


            double y = Canvas.GetTop(ball);
            if (goingDown)
            {
                y += v;
            }
            else
            {
                y -= v;
            }
            if (y + ball.Height > theCanvas.ActualHeight)
            {
                goingDown = false;
                y = theCanvas.ActualHeight - ball.Height;
                System.Media.SystemSounds.Hand.Play();
            }

            else if (y < 0.0)
            {
                goingDown = true;
                y = 0.0;
                System.Media.SystemSounds.Hand.Play();
            }

            Canvas.SetTop(ball, y);

        }
        int score;
        private void ball_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (timer.IsEnabled)
            {
                score++;
                labelScore.Content = score;
                System.Media.SystemSounds.Asterisk.Play();
            }
        }
    }
}
