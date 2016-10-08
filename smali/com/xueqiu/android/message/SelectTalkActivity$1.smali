.class final Lcom/xueqiu/android/message/SelectTalkActivity$1;
.super Ljava/lang/Object;
.source "SelectTalkActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/SelectTalkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/SelectTalkActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/SelectTalkActivity;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/xueqiu/android/message/SelectTalkActivity$1;->a:Lcom/xueqiu/android/message/SelectTalkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity$1;->a:Lcom/xueqiu/android/message/SelectTalkActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/SelectTalkActivity;->a(Lcom/xueqiu/android/message/SelectTalkActivity;)Lcom/xueqiu/android/message/model/Message;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity$1;->a:Lcom/xueqiu/android/message/SelectTalkActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/SelectTalkActivity;->b(Lcom/xueqiu/android/message/SelectTalkActivity;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xueqiu/android/message/SelectTalkActivity$1;->a:Lcom/xueqiu/android/message/SelectTalkActivity;

    const v2, 0x7f070070

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/SelectTalkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/SelectTalkActivity$1;->a:Lcom/xueqiu/android/message/SelectTalkActivity;

    const v2, 0x7f0700b1

    .line 141
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/SelectTalkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/SelectTalkActivity$1$1;

    invoke-direct {v2, p0, p3}, Lcom/xueqiu/android/message/SelectTalkActivity$1$1;-><init>(Lcom/xueqiu/android/message/SelectTalkActivity$1;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/SelectTalkActivity$1;->a:Lcom/xueqiu/android/message/SelectTalkActivity;

    const v2, 0x7f070409

    .line 146
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/SelectTalkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/SelectTalkActivity$1;->a:Lcom/xueqiu/android/message/SelectTalkActivity;

    const v2, 0x7f0701ae

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/SelectTalkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/SelectTalkActivity$1;->a:Lcom/xueqiu/android/message/SelectTalkActivity;

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/message/SelectTalkActivity;->b(I)V

    goto :goto_0
.end method
