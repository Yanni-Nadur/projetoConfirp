using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace testeConfirp {
    public partial class Default : Page {

        readonly SqlConnection con = new SqlConnection();
        readonly SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e) {
            con.ConnectionString = "Data Source=DESKTOP-5O401KG;Initial Catalog=testeConfip;Integrated Security=True";
            con.Open();
            if (!Page.IsPostBack) {
                DataShow();
            }

        }

        protected void btnAdd_Click(object sender, EventArgs e) {
            dt = new DataTable();
            cmd.CommandText = $"Insert into Cliente(Nome,DataNascimento,IdSexo)values('{txtNome.Text}', '{txtDtNas.Text}', '{int.Parse(dpListSexo.SelectedValue)}')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();

        }

        public void DataShow() {
            ds = new DataSet();
            cmd.CommandText = "Select Cliente.Id, Cliente.Nome, Cliente.DataNascimento, Sexo.Descricao from Cliente join Sexo on Cliente.IdSexo = Sexo.Id";
            cmd.Connection = con;
            sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            cmd.ExecuteNonQuery();
            GvPessoas.DataSource = ds;
            GvPessoas.DataBind();
            con.Close();

        }


        protected void BtnAlterarDados_Command(object sender, CommandEventArgs e) {
            string idAlteracao = e.CommandArgument.ToString();

            dt = new DataTable();
            cmd.CommandText = $"Update Cliente set Nome='{txtNome.Text}', DataNascimento='{txtDtNas.Text}', IdSexo='{int.Parse(dpListSexo.SelectedValue)}' where Id='{idAlteracao}'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
            con.Close();

        }

        protected void BtnExcluir_Command(object sender, CommandEventArgs e) {
            string idDelecao = e.CommandArgument.ToString();

            dt = new DataTable();
            cmd.CommandText = $"Delete from Cliente where Id='{idDelecao}'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
            con.Close();
        }
    }


}