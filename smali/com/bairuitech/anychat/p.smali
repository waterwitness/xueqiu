.class public final Lcom/bairuitech/anychat/p;
.super Ljava/lang/Object;
.source "AnyChatVideoHelper.java"


# instance fields
.field a:[Lcom/bairuitech/anychat/q;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0xa

    iput v0, p0, Lcom/bairuitech/anychat/p;->b:I

    .line 23
    iget v0, p0, Lcom/bairuitech/anychat/p;->b:I

    new-array v0, v0, [Lcom/bairuitech/anychat/q;

    iput-object v0, p0, Lcom/bairuitech/anychat/p;->a:[Lcom/bairuitech/anychat/q;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/SurfaceHolder;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 27
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/bairuitech/anychat/p;->b:I

    if-ge v0, v3, :cond_2

    .line 28
    iget-object v3, p0, Lcom/bairuitech/anychat/p;->a:[Lcom/bairuitech/anychat/q;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/bairuitech/anychat/p;->a:[Lcom/bairuitech/anychat/q;

    aget-object v3, v3, v0

    .line 1125
    iget v3, v3, Lcom/bairuitech/anychat/q;->a:I

    .line 28
    if-ne v3, v2, :cond_0

    .line 29
    iget-object v3, p0, Lcom/bairuitech/anychat/p;->a:[Lcom/bairuitech/anychat/q;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_1
    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v0, p0, Lcom/bairuitech/anychat/p;->b:I

    if-ge v1, v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/bairuitech/anychat/p;->a:[Lcom/bairuitech/anychat/q;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/bairuitech/anychat/p;->a:[Lcom/bairuitech/anychat/q;

    new-instance v2, Lcom/bairuitech/anychat/q;

    invoke-direct {v2, p1}, Lcom/bairuitech/anychat/q;-><init>(Landroid/view/SurfaceHolder;)V

    aput-object v2, v0, v1

    .line 40
    :goto_1
    return v1

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 44
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/bairuitech/anychat/p;->b:I

    if-lt p1, v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/bairuitech/anychat/p;->a:[Lcom/bairuitech/anychat/q;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/bairuitech/anychat/p;->a:[Lcom/bairuitech/anychat/q;

    aget-object v0, v0, p1

    .line 1127
    iput p2, v0, Lcom/bairuitech/anychat/q;->a:I

    goto :goto_0
.end method
