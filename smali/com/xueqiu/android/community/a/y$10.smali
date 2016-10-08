.class final Lcom/xueqiu/android/community/a/y$10;
.super Ljava/lang/Object;
.source "RecommendAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/y;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Lcom/xueqiu/android/community/a/y;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/y;Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/xueqiu/android/community/a/y$10;->b:Lcom/xueqiu/android/community/a/y;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/y$10;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/y$10;->b:Lcom/xueqiu/android/community/a/y;

    .line 1065
    iget-object v1, v1, Lcom/xueqiu/android/community/a/y;->c:Landroid/content/Context;

    .line 175
    const-class v2, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    const-string v1, "extra_user"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/y$10;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lcom/xueqiu/android/community/a/y$10;->b:Lcom/xueqiu/android/community/a/y;

    .line 2065
    iget-object v1, v1, Lcom/xueqiu/android/community/a/y;->c:Landroid/content/Context;

    .line 177
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 178
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x44c

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 179
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/y$10;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 180
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 181
    return-void
.end method
