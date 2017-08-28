#-------------
# Environment configuration
#-------------

# Change Prompt
#----------------------------------------------------------


# Set Paths
#----------------------------------------------------------
#mettre au propre les path en les deplacant du home


# path to perl
PATH="/home/victoryt/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/victoryt/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/victoryt/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/victoryt/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/victoryt/perl5"; export PERL_MM_OPT;

export LD_LIBRARY_PATH='/usr/local/lib:'

# path to JAVA8-jdk (netbeans)
export JAVA_HOME=usr/lib/jvm/java-8-openjdk-amd64
export PATH=$PATH:/usr/lib/jvm/java-8-openjdk-amd64/bin


# added by Miniconda3 4.3.21 installer
export PATH="/home/victoryt/miniconda3/bin:$PATH"

# added by Me Cytoscape 3.5.1
export PATH=$PATH:/home/victoryt/Cytoscape_v3.5.1


#-------------
# File & Folder management
#-------------

#Extract most know archives with one command
extract () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)	tar xjf $1		;;
			*.tar.gz)	tar xzf $1		;;
			*.bz2)		bunzip2 $1		;;
			*.rar)		unrar e $1		;;
			*.gz)		gunzip $1		;;
			*.tar)		tar xf $1		;;
			*.tbz2)		tar xjf $1		;;
			*.tgz)		tar xzf $1		;;
			*.zip)		unzip $1		;;
			*.Z)		uncompress $1	;;
			*.7z)		7z x $1			;;
			*)		echo "'$1' cannot be extracted via extract()" ;;
		esac
	else
		echo"'$1' is not a valid file"
	fi
}
