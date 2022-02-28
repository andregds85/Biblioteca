<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>  
<%@ page language='java' import='conexao.conecta' %>
    
<%  

String nome = request.getParameter("nome");
String isbn = request.getParameter("isbn");


out.println(nome);
out.println(isbn);


		try {
		
			Connection con = conecta.getConexao();
			String sql = "insert into livros(nome,isbn)values(?,?)";
			
			PreparedStatement smtp = con.prepareStatement(sql);
			
			smtp.setString(1, nome);
			smtp.setString(2, isbn );

			smtp.execute();
			smtp.close();
			con.close();
			
		}catch(Exception e){
			
			out.print("Deu Erro"+e);
			
		}

%>  

<script>
alert("Cadastro Efetuado com Sucesso");
</script>	

	
<script>
    document.write('<a href="' + document.referrer + '">Voltar</a>');
</script>	
			
			
			
			
		