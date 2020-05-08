template_prefix='Template'
default_prefix="$(date '+%Y%m%d')"
template_name=$1

if [[ -z "$1" ]]; then
    read -p "Choose Template: " template_name
fi

if [[ -z "$2" ]]; then
    read -p "Enter Prefix (${default_prefix}): " prefix_input
fi
prefix_input=${prefix_input:-$default_prefix}
prefix=${2:-$prefix_input}

target_template="${template_prefix}-${template_name}"
target_instance="${prefix}-${template_name}"
cp -R "./${target_template}" "./${target_instance}"