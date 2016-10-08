.class final Lcom/xueqiu/android/message/c$15;
.super Ljava/lang/Object;
.source "RecentTalkFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/xueqiu/android/message/c$15;->a:Lcom/xueqiu/android/message/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 555
    iget-object v0, p0, Lcom/xueqiu/android/message/c$15;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/message/a/z;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/message/c$15;->a:Lcom/xueqiu/android/message/c;

    .line 556
    invoke-static {v0}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/message/a/z;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/xueqiu/android/message/c$15;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/message/a/z;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 558
    if-nez v0, :cond_0

    move v0, v1

    .line 575
    :goto_0
    return v0

    .line 561
    :cond_0
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 562
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07024f

    .line 563
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    iget-object v5, p0, Lcom/xueqiu/android/message/c$15;->a:Lcom/xueqiu/android/message/c;

    const v6, 0x7f070118

    .line 564
    invoke-virtual {v5, v6}, Lcom/xueqiu/android/message/c;->a(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    new-instance v1, Lcom/xueqiu/android/message/c$15$1;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/message/c$15$1;-><init>(Lcom/xueqiu/android/message/c$15;Lcom/xueqiu/android/message/model/Talk;)V

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v2

    .line 572
    goto :goto_0

    :cond_1
    move v0, v1

    .line 575
    goto :goto_0
.end method
