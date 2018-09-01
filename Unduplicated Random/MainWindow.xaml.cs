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

using System.Collections.ObjectModel;
using System.ComponentModel;
namespace Unduplicated_Random
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btn_Unduplicated_Random_Click(object sender, RoutedEventArgs e)
        {
            //清空列表以前数据
            resultShowClassList.Clear();
            //载入参数
            int upper, lower, number_need, number_total;
            upper = Convert.ToInt16(parameter_Upper.Text);
            lower = Convert.ToInt16(parameter_Lower.Text);
            number_need = Convert.ToInt16(parameter_Number.Text);
            number_total = upper - lower + 1;//例如：10-15 一共是10 11 12 13 14 15六个数字

            //生成索引
            int[] random_index = new int[number_total];
            int random_index_result;
            for (int i = 0; i < number_total; i++)
            {
                random_index_result = lower + i;
                random_index[i] = random_index_result;
            }

            //保存结果用
            int[] random_value = new int[number_need];
            
            //随机取索引号
            Random random = new Random();
            int random_index_choose;
            int tempValue;
            for (int j = 1; j <= number_need; j++)
            {
                //随机生成一个索引位置
                random_index_choose = random.Next(0, number_total - 1);
                //获取这个索引位置的值，并将这个索引位置的值与最后一个值交换
                tempValue = random_index[random_index_choose];
                random_index[random_index_choose] = random_index[number_total - 1];
                random_index[number_total - 1] = tempValue;
                //保存第一个结果选出的值
                random_value[j - 1] = random_index[number_total - 1];          
                //将索引值减小，确保最后一个索引只用一次。
                number_total--;

                //将数据组合好，便于列表中显示
                resultShowClassList.Add(new ResultShowClass { ID = j, Result = random_value[j - 1] });         
            }
            //展示结果
            lv_resultShow.ItemsSource = resultShowClassList;
        }

        public class ResultShowClass
        {
            public int ID { get; set; }
            public int Result { get; set; }
        }
        ObservableCollection<ResultShowClass> resultShowClassList = new ObservableCollection<ResultShowClass>();

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            int i = 9;
            MessageBox.Show(i.ToString());
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("1234");
        }
    }
}
