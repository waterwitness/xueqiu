.class public final Lcom/xiaomi/push/b/b;
.super Lcom/google/a/a/e;


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Z

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/a/a/e;-><init>()V

    iput v0, p0, Lcom/xiaomi/push/b/b;->a:I

    iput-boolean v0, p0, Lcom/xiaomi/push/b/b;->c:Z

    iput v0, p0, Lcom/xiaomi/push/b/b;->g:I

    iput-boolean v0, p0, Lcom/xiaomi/push/b/b;->i:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/b/b;->d:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/b/b;->j:I

    return-void
.end method

.method public static b(Lcom/google/a/a/a;)Lcom/xiaomi/push/b/b;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/b/b;

    invoke-direct {v0}, Lcom/xiaomi/push/b/b;-><init>()V

    invoke-direct {v0, p0}, Lcom/xiaomi/push/b/b;->c(Lcom/google/a/a/a;)Lcom/xiaomi/push/b/b;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/google/a/a/a;)Lcom/xiaomi/push/b/b;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 0
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/a/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 30000
    invoke-virtual {p1, v0}, Lcom/google/a/a/a;->b(I)Z

    move-result v0

    .line 0
    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    .line 31000
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/a/a/a;->c()I

    move-result v0

    .line 32000
    iput-boolean v5, p0, Lcom/xiaomi/push/b/b;->e:Z

    iput v0, p0, Lcom/xiaomi/push/b/b;->a:I

    goto :goto_0

    .line 0
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/a/a/a;->b()Z

    move-result v0

    .line 33000
    iput-boolean v5, p0, Lcom/xiaomi/push/b/b;->b:Z

    iput-boolean v0, p0, Lcom/xiaomi/push/b/b;->c:Z

    goto :goto_0

    .line 34000
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/a/a/a;->c()I

    move-result v0

    .line 35000
    iput-boolean v5, p0, Lcom/xiaomi/push/b/b;->f:Z

    iput v0, p0, Lcom/xiaomi/push/b/b;->g:I

    goto :goto_0

    .line 0
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/a/a/a;->b()Z

    move-result v0

    .line 36000
    iput-boolean v5, p0, Lcom/xiaomi/push/b/b;->h:Z

    iput-boolean v0, p0, Lcom/xiaomi/push/b/b;->i:Z

    goto :goto_0

    .line 37000
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/a/a/a;->c()I

    move-result v1

    iget v0, p1, Lcom/google/a/a/a;->b:I

    iget v2, p1, Lcom/google/a/a/a;->c:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_2

    if-lez v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/google/a/a/a;->a:[B

    iget v3, p1, Lcom/google/a/a/a;->c:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v2, p1, Lcom/google/a/a/a;->c:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/google/a/a/a;->c:I

    .line 38000
    :goto_1
    iget-object v1, p0, Lcom/xiaomi/push/b/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/push/b/b;->d:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/push/b/b;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37000
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/a/a/a;->c(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1

    .line 0
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 0
    .line 16000
    iget-boolean v0, p0, Lcom/xiaomi/push/b/b;->e:Z

    .line 0
    if-eqz v0, :cond_4

    .line 17000
    iget v0, p0, Lcom/xiaomi/push/b/b;->a:I

    .line 18000
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/a/a/b;->a(I)I

    move-result v2

    .line 19000
    invoke-static {v0}, Lcom/google/a/a/b;->c(I)I

    move-result v0

    .line 18000
    add-int/2addr v0, v2

    .line 0
    add-int/lit8 v0, v0, 0x0

    .line 20000
    :goto_0
    iget-boolean v2, p0, Lcom/xiaomi/push/b/b;->b:Z

    .line 0
    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 22000
    invoke-static {v2}, Lcom/google/a/a/b;->a(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 0
    add-int/2addr v0, v2

    .line 23000
    :cond_0
    iget-boolean v2, p0, Lcom/xiaomi/push/b/b;->f:Z

    .line 0
    if-eqz v2, :cond_1

    const/4 v2, 0x3

    .line 24000
    iget v3, p0, Lcom/xiaomi/push/b/b;->g:I

    .line 0
    invoke-static {v2, v3}, Lcom/google/a/a/b;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 25000
    :cond_1
    iget-boolean v2, p0, Lcom/xiaomi/push/b/b;->h:Z

    .line 0
    if-eqz v2, :cond_3

    const/4 v2, 0x4

    .line 27000
    invoke-static {v2}, Lcom/google/a/a/b;->a(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 0
    add-int/2addr v0, v2

    move v2, v0

    .line 28000
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/push/b/b;->d:Ljava/util/List;

    .line 0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/a/b;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_2

    :cond_2
    add-int v0, v2, v1

    .line 29000
    iget-object v1, p0, Lcom/xiaomi/push/b/b;->d:Ljava/util/List;

    .line 0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/push/b/b;->j:I

    return v0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/a/a/a;)Lcom/google/a/a/e;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/push/b/b;->c(Lcom/google/a/a/a;)Lcom/xiaomi/push/b/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/a/a/b;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 0
    .line 1000
    iget-boolean v0, p0, Lcom/xiaomi/push/b/b;->e:Z

    .line 0
    if-eqz v0, :cond_0

    .line 2000
    iget v0, p0, Lcom/xiaomi/push/b/b;->a:I

    .line 3000
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v6}, Lcom/google/a/a/b;->c(II)V

    .line 4000
    invoke-virtual {p1, v0}, Lcom/google/a/a/b;->b(I)V

    .line 5000
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/push/b/b;->b:Z

    .line 0
    if-eqz v0, :cond_1

    .line 6000
    iget-boolean v0, p0, Lcom/xiaomi/push/b/b;->c:Z

    .line 0
    invoke-virtual {p1, v7, v0}, Lcom/google/a/a/b;->a(IZ)V

    .line 7000
    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/push/b/b;->f:Z

    .line 0
    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 8000
    iget v1, p0, Lcom/xiaomi/push/b/b;->g:I

    .line 0
    invoke-virtual {p1, v0, v1}, Lcom/google/a/a/b;->a(II)V

    .line 9000
    :cond_2
    iget-boolean v0, p0, Lcom/xiaomi/push/b/b;->h:Z

    .line 0
    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 10000
    iget-boolean v1, p0, Lcom/xiaomi/push/b/b;->i:Z

    .line 0
    invoke-virtual {p1, v0, v1}, Lcom/google/a/a/b;->a(IZ)V

    .line 11000
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/push/b/b;->d:Ljava/util/List;

    .line 0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 12000
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v7}, Lcom/google/a/a/b;->c(II)V

    .line 13000
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    invoke-virtual {p1, v2}, Lcom/google/a/a/b;->b(I)V

    .line 14000
    array-length v2, v0

    .line 15000
    iget v3, p1, Lcom/google/a/a/b;->b:I

    iget v4, p1, Lcom/google/a/a/b;->c:I

    sub-int/2addr v3, v4

    if-lt v3, v2, :cond_4

    iget-object v3, p1, Lcom/google/a/a/b;->a:[B

    iget v4, p1, Lcom/google/a/a/b;->c:I

    invoke-static {v0, v6, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/google/a/a/b;->c:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/google/a/a/b;->c:I

    goto :goto_0

    :cond_4
    iget v3, p1, Lcom/google/a/a/b;->b:I

    iget v4, p1, Lcom/google/a/a/b;->c:I

    sub-int/2addr v3, v4

    iget-object v4, p1, Lcom/google/a/a/b;->a:[B

    iget v5, p1, Lcom/google/a/a/b;->c:I

    invoke-static {v0, v6, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v3, 0x0

    sub-int/2addr v2, v3

    iget v3, p1, Lcom/google/a/a/b;->b:I

    iput v3, p1, Lcom/google/a/a/b;->c:I

    invoke-virtual {p1}, Lcom/google/a/a/b;->a()V

    iget v3, p1, Lcom/google/a/a/b;->b:I

    if-gt v2, v3, :cond_5

    iget-object v3, p1, Lcom/google/a/a/b;->a:[B

    invoke-static {v0, v4, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p1, Lcom/google/a/a/b;->c:I

    goto :goto_0

    :cond_5
    iget-object v3, p1, Lcom/google/a/a/b;->d:Ljava/io/OutputStream;

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 0
    :cond_6
    return-void
.end method
