package Modelo;

public class Usuario extends Persona {
	private String contrase�a;
	private int tipo;
	private String usuario;
	private String correElectronico;
	
	
	public String getContrase�a() {
		return contrase�a;
	}
	public void setContrase�a(String contrase�a) {
		this.contrase�a = contrase�a;
	}
	
	public void verBalance() {
		
	}
	
	public void verEstado() {
		
	}
	public int getTipo() {
		return tipo;
	}
	public void setTipo(int tipo) {
		this.tipo = tipo;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getCorreElectronico() {
		return correElectronico;
	}
	public void setCorreElectronico(String correElectronico) {
		this.correElectronico = correElectronico;
	}

}
