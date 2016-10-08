.class final Lcom/xueqiu/android/message/TalkProfileActivity$2;
.super Ljava/lang/Object;
.source "TalkProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/TalkProfileActivity;->a(Lcom/xueqiu/android/message/model/IMGroup;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/model/IMGroup;

.field final synthetic b:Lcom/xueqiu/android/message/TalkProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/message/model/IMGroup;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$2;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    iput-object p2, p0, Lcom/xueqiu/android/message/TalkProfileActivity$2;->a:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 378
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$2;->a:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getMasterId()J

    move-result-wide v0

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 1077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 378
    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 379
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$2;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    const v2, 0x7f0701c0

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/TalkProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$2;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    const v2, 0x7f070409

    .line 380
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/TalkProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$2;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    const v2, 0x7f0701ac

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/TalkProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 386
    :goto_0
    return-void

    .line 382
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/message/GroupNameActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    const-string v1, "extra_org"

    iget-object v2, p0, Lcom/xueqiu/android/message/TalkProfileActivity$2;->a:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 384
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$2;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/message/TalkProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
