.class final Lcom/xueqiu/android/message/d$9;
.super Ljava/lang/Object;
.source "TalkListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/d;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/d;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/xueqiu/android/message/d$9;->a:Lcom/xueqiu/android/message/d;

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

    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/message/d$9;->a:Lcom/xueqiu/android/message/d;

    invoke-static {v0}, Lcom/xueqiu/android/message/d;->a(Lcom/xueqiu/android/message/d;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/message/a/z;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 162
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07024f

    .line 163
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xueqiu/android/message/d$9;->a:Lcom/xueqiu/android/message/d;

    const v5, 0x7f070118

    .line 164
    invoke-virtual {v4, v5}, Lcom/xueqiu/android/message/d;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lcom/xueqiu/android/message/d$9$1;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/message/d$9$1;-><init>(Lcom/xueqiu/android/message/d$9;Lcom/xueqiu/android/message/model/Talk;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 172
    return v6
.end method
