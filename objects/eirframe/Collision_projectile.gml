if(other.owner != eirframe_eirnaut){
	//health -= other.damage; // Subtract damage from health
	if (health <= 0) {
	    // Handle death (e.g., play death animation, trigger game over, etc.)
	    instance_destroy(); // Destroy the player or enemy object
	}
}
