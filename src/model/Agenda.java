package model;

import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public class Agenda {
	
	private class NomeComparator implements Comparator<Contato>{
		@Override
		public int compare(Contato c1, Contato c2) {
			return c1.getNome().compareTo(c2.getNome());
		}
	}
	
	private static Agenda instance;
	private Map<Integer, Contato> contatos = new HashMap<Integer, Contato>();
	private NomeComparator nomeComparator = new NomeComparator();
	private int proximoId= 1;
	
	
	private Agenda() {
		Contato c = null;
		
		c = new Contato();
		c.setNome("Lauren");
		c.setTelefone("7777-7777");
		salvar(c);
		
		c= new Contato();
		c.setNome("Gabriel");
		c.setTelefone("3333-3333");
		salvar(c);
		
		c = new Contato();
		c.setNome("Lela");
		c.setTelefone("4444-4444");
		salvar(c);
		
		c= new Contato();
		c.setNome("Carla");
		c.setTelefone("5555-5555");
		salvar(c);
	}
	//padrao singleton- garante que terá apenas um objeto em toda execução.
	public static Agenda getInstance() {
		if(instance == null) {
			instance = new Agenda();
		}
		return instance;
	}
	public Set<Contato> getContatos(){
		Set<Contato> set = new TreeSet<Contato>(nomeComparator);
		set.addAll(contatos.values());
		return set;
	}
	public void salvar (Contato c ) {
		if(c.getId()==null) {
			c.setId(gerarId());
		}
		contatos.put(c.getId(), c);
	}
	public Contato carregar(int id) {
		return contatos.get(id);
	}
	public void exluir(int id) {
		contatos.remove(id);
	}
	private int gerarId() {
		return proximoId++;
	}
}
