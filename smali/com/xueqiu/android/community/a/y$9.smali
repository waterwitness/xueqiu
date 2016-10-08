.class final Lcom/xueqiu/android/community/a/y$9;
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
    .line 163
    iput-object p1, p0, Lcom/xueqiu/android/community/a/y$9;->b:Lcom/xueqiu/android/community/a/y;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/y$9;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/community/a/y$9;->b:Lcom/xueqiu/android/community/a/y;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/y$9;->a:Lcom/xueqiu/android/community/model/User;

    .line 1361
    new-instance v2, Lcom/xueqiu/android/community/a/y$2;

    invoke-direct {v2, v0, v1}, Lcom/xueqiu/android/community/a/y$2;-><init>(Lcom/xueqiu/android/community/a/y;Lcom/xueqiu/android/community/model/User;)V

    .line 1377
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1378
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, v0, Lcom/xueqiu/android/community/a/y;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0700b3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700b1

    new-instance v5, Lcom/xueqiu/android/community/a/y$3;

    invoke-direct {v5, v0, v1, v2}, Lcom/xueqiu/android/community/a/y$3;-><init>(Lcom/xueqiu/android/community/a/y;Lcom/xueqiu/android/community/model/User;Lcom/xueqiu/android/base/b/p;)V

    .line 1379
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    const/4 v2, 0x0

    .line 1384
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 167
    :goto_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x44c

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 168
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/y$9;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 169
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 170
    return-void

    .line 1386
    :cond_0
    iget-object v0, v0, Lcom/xueqiu/android/community/a/y;->e:Lcom/xueqiu/android/base/b/ai;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v2}, Lcom/xueqiu/android/base/b/ai;->i(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method
