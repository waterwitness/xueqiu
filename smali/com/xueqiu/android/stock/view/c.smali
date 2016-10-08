.class public final Lcom/xueqiu/android/stock/view/c;
.super Ljava/lang/Object;
.source "Recycler.java"


# instance fields
.field a:[Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Stack",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-array v0, v3, [Ljava/util/Stack;

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/c;->a:[Ljava/util/Stack;

    .line 24
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 25
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/c;->a:[Ljava/util/Stack;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    aput-object v2, v1, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/c;->a:[Ljava/util/Stack;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
