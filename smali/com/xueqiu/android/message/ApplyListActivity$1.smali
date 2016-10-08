.class final Lcom/xueqiu/android/message/ApplyListActivity$1;
.super Ljava/lang/Object;
.source "ApplyListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ApplyListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ApplyListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ApplyListActivity;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/xueqiu/android/message/ApplyListActivity$1;->a:Lcom/xueqiu/android/message/ApplyListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
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

    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/message/ApplyListActivity$1;->a:Lcom/xueqiu/android/message/ApplyListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ApplyListActivity;->a(Lcom/xueqiu/android/message/ApplyListActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->d()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 55
    if-gez v0, :cond_0

    iget-object v3, p0, Lcom/xueqiu/android/message/ApplyListActivity$1;->a:Lcom/xueqiu/android/message/ApplyListActivity;

    invoke-static {v3}, Lcom/xueqiu/android/message/ApplyListActivity;->a(Lcom/xueqiu/android/message/ApplyListActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v3

    .line 1367
    iget-object v3, v3, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 55
    invoke-virtual {v3}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    move v0, v1

    .line 69
    :goto_0
    return v0

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/xueqiu/android/message/ApplyListActivity$1;->a:Lcom/xueqiu/android/message/ApplyListActivity;

    invoke-static {v3}, Lcom/xueqiu/android/message/ApplyListActivity;->a(Lcom/xueqiu/android/message/ApplyListActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v3

    .line 2367
    iget-object v3, v3, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 58
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/common/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Apply;

    .line 59
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07024f

    .line 60
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    iget-object v5, p0, Lcom/xueqiu/android/message/ApplyListActivity$1;->a:Lcom/xueqiu/android/message/ApplyListActivity;

    const v6, 0x7f0700b7

    .line 61
    invoke-virtual {v5, v6}, Lcom/xueqiu/android/message/ApplyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Apply;->getScreenName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    new-instance v1, Lcom/xueqiu/android/message/ApplyListActivity$1$1;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/message/ApplyListActivity$1$1;-><init>(Lcom/xueqiu/android/message/ApplyListActivity$1;Lcom/xueqiu/android/message/model/Apply;)V

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v2

    .line 69
    goto :goto_0
.end method
