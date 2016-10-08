.class final Lcom/xueqiu/android/base/util/l$3$1$1$1;
.super Ljava/lang/Object;
.source "GroupUtil.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/l$3$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/xueqiu/android/community/model/FriendshipGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/util/l$3$1$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/l$3$1$1;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/xueqiu/android/base/util/l$3$1$1$1;->a:Lcom/xueqiu/android/base/util/l$3$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 233
    check-cast p1, Lcom/xueqiu/android/community/model/FriendshipGroup;

    .line 1236
    if-eqz p1, :cond_0

    .line 1237
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xueqiu/android/base/util/l$3$1$1$1;->a:Lcom/xueqiu/android/base/util/l$3$1$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$3$1$1;->b:Lcom/xueqiu/android/base/util/l$3$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$3$1;->a:Lcom/xueqiu/android/community/a/d;

    .line 2096
    iget-object v1, v1, Lcom/xueqiu/android/community/a/d;->a:Ljava/util/List;

    .line 1237
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1238
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1239
    iget-object v1, p0, Lcom/xueqiu/android/base/util/l$3$1$1$1;->a:Lcom/xueqiu/android/base/util/l$3$1$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$3$1$1;->b:Lcom/xueqiu/android/base/util/l$3$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$3$1;->b:Lcom/xueqiu/android/base/util/l$3;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$3;->a:Lcom/xueqiu/android/common/b;

    const-string v2, "key_friendship_groups"

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    iget-object v1, p0, Lcom/xueqiu/android/base/util/l$3$1$1$1;->a:Lcom/xueqiu/android/base/util/l$3$1$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$3$1$1;->b:Lcom/xueqiu/android/base/util/l$3$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$3$1;->b:Lcom/xueqiu/android/base/util/l$3;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$3;->a:Lcom/xueqiu/android/common/b;

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.xueqiu.android.action.USER_GROUP_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 1241
    iget-object v1, p0, Lcom/xueqiu/android/base/util/l$3$1$1$1;->a:Lcom/xueqiu/android/base/util/l$3$1$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$3$1$1;->b:Lcom/xueqiu/android/base/util/l$3$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$3$1;->a:Lcom/xueqiu/android/community/a/d;

    .line 2100
    iput-object v0, v1, Lcom/xueqiu/android/community/a/d;->a:Ljava/util/List;

    .line 1242
    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$3$1$1$1;->a:Lcom/xueqiu/android/base/util/l$3$1$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/l$3$1$1;->b:Lcom/xueqiu/android/base/util/l$3$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/l$3$1;->a:Lcom/xueqiu/android/community/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/d;->a()Ljava/util/List;

    move-result-object v0

    .line 1243
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    iget-object v1, p0, Lcom/xueqiu/android/base/util/l$3$1$1$1;->a:Lcom/xueqiu/android/base/util/l$3$1$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$3$1$1;->b:Lcom/xueqiu/android/base/util/l$3$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$3$1;->a:Lcom/xueqiu/android/community/a/d;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/a/d;->a(Ljava/util/List;)V

    .line 1245
    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$3$1$1$1;->a:Lcom/xueqiu/android/base/util/l$3$1$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/l$3$1$1;->b:Lcom/xueqiu/android/base/util/l$3$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/l$3$1;->a:Lcom/xueqiu/android/community/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/d;->notifyDataSetChanged()V

    .line 233
    :cond_0
    return-void
.end method
