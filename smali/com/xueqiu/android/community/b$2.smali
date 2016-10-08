.class final Lcom/xueqiu/android/community/b$2;
.super Ljava/lang/Object;
.source "CommentReceiveFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/b;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/xueqiu/android/community/b$2;->a:Lcom/xueqiu/android/community/b;

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
    const/4 v6, 0x1

    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/community/b$2;->a:Lcom/xueqiu/android/community/b;

    invoke-static {v0}, Lcom/xueqiu/android/community/b;->a(Lcom/xueqiu/android/community/b;)Lcom/xueqiu/android/community/a/a;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    .line 106
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07009e

    .line 107
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xueqiu/android/community/b$2;->a:Lcom/xueqiu/android/community/b;

    const v5, 0x7f070119

    .line 108
    invoke-virtual {v4, v5}, Lcom/xueqiu/android/community/b;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lcom/xueqiu/android/community/b$2$1;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/community/b$2$1;-><init>(Lcom/xueqiu/android/community/b$2;Lcom/xueqiu/android/community/model/Comment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 115
    return v6
.end method
