.class final Lcom/xueqiu/android/message/a$3;
.super Lcom/xueqiu/android/base/b/p;
.source "GroupProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/xueqiu/android/message/a$3;->a:Lcom/xueqiu/android/message/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/xueqiu/android/message/a$3;->a:Lcom/xueqiu/android/message/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a;->z()V

    .line 311
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 312
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 307
    check-cast p1, Ljava/util/ArrayList;

    .line 1316
    iget-object v0, p0, Lcom/xueqiu/android/message/a$3;->a:Lcom/xueqiu/android/message/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a;->z()V

    .line 1317
    const-string v0, "GroupProfileFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get users : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/message/a$3;->a:Lcom/xueqiu/android/message/a;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/a;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/message/GroupMemberListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1319
    const-string v1, "extra_member_list"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1320
    const-string v1, "extra_group"

    iget-object v2, p0, Lcom/xueqiu/android/message/a$3;->a:Lcom/xueqiu/android/message/a;

    invoke-static {v2}, Lcom/xueqiu/android/message/a;->c(Lcom/xueqiu/android/message/a;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1321
    iget-object v1, p0, Lcom/xueqiu/android/message/a$3;->a:Lcom/xueqiu/android/message/a;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/a;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/k;->startActivity(Landroid/content/Intent;)V

    .line 307
    return-void
.end method
