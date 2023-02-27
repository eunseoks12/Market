function Delete(id) {
	const result = window.confirm('정말 탈퇴하시겠습니까?');
	
	if(result) {
		location.href='UserDelete.jsp';
	}
}