.class final Lcom/xueqiu/android/message/TalkProfileActivity$13;
.super Ljava/lang/Object;
.source "TalkProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/TalkProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/TalkProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkProfileActivity;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 267
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    const v2, 0x7f070070

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/TalkProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    const v2, 0x7f0700b1

    .line 268
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/TalkProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;

    invoke-direct {v2, p0, p1}, Lcom/xueqiu/android/message/TalkProfileActivity$13$1;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity$13;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    const v2, 0x7f070409

    .line 287
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/TalkProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$13;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    const v2, 0x7f0701a8

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/TalkProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 288
    return-void
.end method
