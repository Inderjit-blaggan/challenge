test_dic = {
    'a': {
        'b': {
            'c': 'd',
            'd': 'f',
            'e': {
                'a': '1'
            },
        },
    },
    'e': {
        'f': 'g',
    },
}

def check_iteratable(data):
    '''Returns a Boolean stating object is iteratable or not'''
    try:
        object_iterator = iter(data)
        return True
    except TypeError as te:
        return False

def get_in_func(obj, key):
    '''
    Following are the assumptions of this function
    1. The 'obj' is an iteratable data structure
    2. The function returns the values if the key is found
    3. In case of absent or wrong key the function return an None value
    4. The function computes the possible keys from scratch everytime an object is passed
    5. It is assumed that key functions as an index, hence object[key] gives the value corresponding to the specific key
    6. Key is in a basic data type or string format
    7. It is assumed that all the structures present inside obj will be of key, value format
    '''
    
    if not check_iteratable(obj):
        return "Object is not Iterable, henceforth the search is not possible"
    
    obj_iter = iter(obj)
    key_split = key.split("/", 1)

    try:
        val = next(obj_iter)
        while val is not None:
            if val == key_split[0]:
                if len(key_split) == 1:
                    return obj[val]
                else:
                    return get_in_func(obj[val], key_split[1])
            val = next(obj_iter)
    
    except:
        # the obj iteration is finished and key isn't found
        return None

    
out = get_in_func(test_dic, 'a/b/c')
print(out)
