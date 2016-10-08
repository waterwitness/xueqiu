.class public final Lcom/sleepycat/b/p/ar;
.super Ljava/lang/Object;
.source "TinyHashSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/p/ar;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/sleepycat/b/p/ar;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 85
    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Z)V

    .line 86
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->a:Ljava/util/Set;

    if-nez v0, :cond_4

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Z)V

    .line 87
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->a:Ljava/util/Set;

    if-eqz v0, :cond_5

    .line 88
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    .line 114
    :cond_2
    :goto_2
    return v1

    :cond_3
    move v0, v2

    .line 85
    goto :goto_0

    :cond_4
    move v0, v2

    .line 86
    goto :goto_1

    .line 106
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    if-eq v0, p1, :cond_6

    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 107
    :cond_6
    iput-object v3, p0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    goto :goto_2

    .line 110
    :cond_7
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    if-eq v0, p1, :cond_8

    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 111
    :cond_8
    iput-object v3, p0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    goto :goto_2

    :cond_9
    move v1, v2

    .line 114
    goto :goto_2
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Z)V

    .line 119
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->a:Ljava/util/Set;

    if-nez v0, :cond_4

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Z)V

    .line 120
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->a:Ljava/util/Set;

    if-eqz v0, :cond_5

    .line 121
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 142
    :cond_2
    :goto_2
    return v2

    :cond_3
    move v0, v2

    .line 118
    goto :goto_0

    :cond_4
    move v0, v2

    .line 119
    goto :goto_1

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    :cond_7
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    if-nez v0, :cond_8

    .line 130
    iput-object p1, p0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    move v2, v1

    .line 131
    goto :goto_2

    .line 133
    :cond_8
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    if-nez v0, :cond_9

    .line 134
    iput-object p1, p0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    move v2, v1

    .line 135
    goto :goto_2

    .line 137
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/b/p/ar;->a:Ljava/util/Set;

    .line 138
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    iput-object v3, p0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    .line 141
    iput-object v3, p0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->a:Ljava/util/Set;

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Z)V

    .line 162
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->a:Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/sleepycat/b/p/ar;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 165
    :goto_1
    return-object v0

    .line 161
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    :cond_3
    new-instance v0, Lcom/sleepycat/b/p/as;

    iget-object v1, p0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, v2}, Lcom/sleepycat/b/p/as;-><init>(Lcom/sleepycat/b/p/ar;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method
