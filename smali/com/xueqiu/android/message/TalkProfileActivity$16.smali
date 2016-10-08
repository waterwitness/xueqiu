.class final Lcom/xueqiu/android/message/TalkProfileActivity$16;
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
    .line 347
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$16;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    iput-object p2, p0, Lcom/xueqiu/android/message/TalkProfileActivity$16;->a:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 350
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    const-string v1, "extra_user"

    iget-object v2, p0, Lcom/xueqiu/android/message/TalkProfileActivity$16;->a:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/IMGroup;->getMaster()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 352
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$16;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 353
    return-void
.end method
