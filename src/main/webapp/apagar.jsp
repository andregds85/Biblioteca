<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>   
 
<%@ page language='java' import='conexao.conecta' %>
    
<%  
									
		int id=Integer.parseInt(request.getParameter("id"));

		try {
		
			Connection con = conecta.getConexao();
			String sql = "delete from livros where id="+id;

			PreparedStatement smtp = con.prepareStatement(sql);
			
			smtp.execute();
			smtp.close();
			con.close();
			
		}catch(Exception e){
			
			out.print("Deu Erro"+e);
			
		}

			
%>  

<script>
alert("Registro Apagado Com Sucesso");
</script>	

	
<script>
    document.write('<a href="' + document.referrer + '">Voltar</a>');
</script>	
			
			
			
			
		