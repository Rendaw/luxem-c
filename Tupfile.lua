local objects = {}

for index, source in ipairs(tup.glob('*.c'))
do
	local out = source .. '.o'
	tup.definerule{
		inputs = {source},
		outputs = {out},
		command = 'gcc -ansi -pedantic -Wall -Werror -ggdb -O0 -fPIC -c -o ' .. out .. ' ' .. source
	}
	objects[#objects + 1] = out
end

tup.definerule{
	inputs = objects,
	outputs = {'luxem.so'},
	command = 'gcc -ansi -pedantic -Wall -Werror -ggdb -O0 -fPIC -shared -o luxem.so ' .. table.concat(objects, ' ')
}
