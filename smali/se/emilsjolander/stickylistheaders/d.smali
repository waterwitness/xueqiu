.class final Lse/emilsjolander/stickylistheaders/d;
.super Ljava/lang/Object;
.source "DistinctMultiHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        "TItemValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lse/emilsjolander/stickylistheaders/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lse/emilsjolander/stickylistheaders/e",
            "<TTKey;TTItemValue;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<TTItemValue;>;>;"
        }
    .end annotation
.end field

.field c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Object;",
            "TTKey;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lse/emilsjolander/stickylistheaders/d$1;

    invoke-direct {v0}, Lse/emilsjolander/stickylistheaders/d$1;-><init>()V

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/d;-><init>(Lse/emilsjolander/stickylistheaders/e;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Lse/emilsjolander/stickylistheaders/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lse/emilsjolander/stickylistheaders/e",
            "<TTKey;TTItemValue;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/d;->b:Ljava/util/LinkedHashMap;

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/d;->c:Ljava/util/LinkedHashMap;

    .line 52
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/d;->a:Lse/emilsjolander/stickylistheaders/e;

    .line 53
    return-void
.end method


# virtual methods
.method final a(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TTItemValue;>;TTItemValue;)Z"
        }
    .end annotation

    .prologue
    .line 127
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/d;->a:Lse/emilsjolander/stickylistheaders/e;

    invoke-interface {v2, v1}, Lse/emilsjolander/stickylistheaders/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/d;->a:Lse/emilsjolander/stickylistheaders/e;

    invoke-interface {v2, p2}, Lse/emilsjolander/stickylistheaders/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
