import settings


class Kuaipan(object):
    pass


if __name__=='__main__':
    kp = Kuaipan()
    try:
        from IPython import embed
        embed()
    except ImportError:
        pass
