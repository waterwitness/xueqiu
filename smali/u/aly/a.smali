.class public abstract Lu/aly/a;
.super Ljava/lang/Object;
.source "AbstractIdTracker.java"


# instance fields
.field final a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/av;",
            ">;"
        }
    .end annotation
.end field

.field c:Lu/aly/bb;

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0xa

    iput v0, p0, Lu/aly/a;->d:I

    .line 13
    const/16 v0, 0x14

    iput v0, p0, Lu/aly/a;->e:I

    .line 19
    iput-object p1, p0, Lu/aly/a;->a:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lu/aly/bh;)V
    .locals 4

    .prologue
    .line 116
    .line 2195
    iget-object v0, p1, Lu/aly/bh;->a:Ljava/util/Map;

    .line 116
    const-string v1, "mName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bb;

    iput-object v0, p0, Lu/aly/a;->c:Lu/aly/bb;

    .line 2234
    iget-object v0, p1, Lu/aly/bh;->b:Ljava/util/List;

    .line 120
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 121
    iget-object v1, p0, Lu/aly/a;->b:Ljava/util/List;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lu/aly/a;->b:Ljava/util/List;

    .line 125
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    :cond_2
    return-void

    .line 125
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av;

    .line 126
    iget-object v2, p0, Lu/aly/a;->a:Ljava/lang/String;

    iget-object v3, v0, Lu/aly/av;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lu/aly/a;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lu/aly/a;->c:Lu/aly/bb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/a;->c:Lu/aly/bb;

    .line 1219
    iget v0, v0, Lu/aly/bb;->c:I

    .line 31
    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract b()Ljava/lang/String;
.end method
