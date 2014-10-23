LuxemCObjects = Define.Objects
{
	Sources = Item 'luxem_internal_common.c' + 'luxem_rawread.c' + 'luxem_rawwrite.c',
	IsLibrary = true,
}

local LuxemC = Define.Library
{
	Name = 'luxem',
	Objects = LuxemCObjects,
}

