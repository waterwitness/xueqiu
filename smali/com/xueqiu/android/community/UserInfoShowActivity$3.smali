.class final Lcom/xueqiu/android/community/UserInfoShowActivity$3;
.super Lcom/xueqiu/android/base/b/p;
.source "UserInfoShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UserInfoShowActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserInfoShowActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserInfoShowActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$3;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 164
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 165
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const v4, 0x7f0e0291

    .line 161
    check-cast p1, Lcom/xueqiu/android/community/model/User;

    .line 1169
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$3;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/community/UserInfoShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://m.weibo.cn/u/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?wm=8001_0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1173
    iget-object v1, p0, Lcom/xueqiu/android/community/UserInfoShowActivity$3;->a:Lcom/xueqiu/android/community/UserInfoShowActivity;

    invoke-virtual {v1, v4}, Lcom/xueqiu/android/community/UserInfoShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/UserInfoShowActivity$3$1;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/UserInfoShowActivity$3$1;-><init>(Lcom/xueqiu/android/community/UserInfoShowActivity$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    :cond_0
    return-void
.end method
