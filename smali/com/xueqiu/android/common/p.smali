.class public final Lcom/xueqiu/android/common/p;
.super Landroid/support/v4/view/bd;
.source "PopAnimationView.java"


# instance fields
.field final synthetic b:Lcom/xueqiu/android/common/n;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/n;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/xueqiu/android/common/p;->b:Lcom/xueqiu/android/common/n;

    invoke-direct {p0}, Landroid/support/v4/view/bd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/xueqiu/android/common/p;->b:Lcom/xueqiu/android/common/n;

    invoke-static {v0}, Lcom/xueqiu/android/common/n;->b(Lcom/xueqiu/android/common/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 434
    iget-object v0, p0, Lcom/xueqiu/android/common/p;->b:Lcom/xueqiu/android/common/n;

    invoke-static {v0}, Lcom/xueqiu/android/common/n;->b(Lcom/xueqiu/android/common/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 428
    if-ne p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/xueqiu/android/common/p;->b:Lcom/xueqiu/android/common/n;

    invoke-static {v0}, Lcom/xueqiu/android/common/n;->b(Lcom/xueqiu/android/common/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method