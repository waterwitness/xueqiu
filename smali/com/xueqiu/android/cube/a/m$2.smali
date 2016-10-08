.class final Lcom/xueqiu/android/cube/a/m$2;
.super Ljava/lang/Object;
.source "EditorialPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/a/m;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/model/Editorial;

.field final synthetic b:I

.field final synthetic c:Lcom/xueqiu/android/cube/a/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/a/m;Lcom/xueqiu/android/cube/model/Editorial;I)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/xueqiu/android/cube/a/m$2;->c:Lcom/xueqiu/android/cube/a/m;

    iput-object p2, p0, Lcom/xueqiu/android/cube/a/m$2;->a:Lcom/xueqiu/android/cube/model/Editorial;

    iput p3, p0, Lcom/xueqiu/android/cube/a/m$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/m$2;->a:Lcom/xueqiu/android/cube/model/Editorial;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Editorial;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 1186
    iget-boolean v1, v1, Lcom/xueqiu/android/base/t;->d:Z

    .line 124
    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/xueqiu/android/common/q;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/cube/a/m$2;->c:Lcom/xueqiu/android/cube/a/m;

    .line 2049
    iget-object v1, v1, Lcom/xueqiu/android/cube/a/m;->b:Landroid/app/Activity;

    .line 125
    if-eqz v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/m$2;->c:Lcom/xueqiu/android/cube/a/m;

    .line 3049
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/m;->b:Landroid/app/Activity;

    .line 3152
    invoke-static {v0, v2}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 138
    :goto_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x44c

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 139
    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/xueqiu/android/cube/a/m$2;->a:Lcom/xueqiu/android/cube/model/Editorial;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Editorial;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v1, "pos"

    iget v2, p0, Lcom/xueqiu/android/cube/a/m$2;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 141
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 143
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 6069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 6077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 144
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/m$2;->a:Lcom/xueqiu/android/cube/model/Editorial;

    .line 145
    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Editorial;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/xueqiu/android/cube/a/m$2$1;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/cube/a/m$2$1;-><init>(Lcom/xueqiu/android/cube/a/m$2;)V

    .line 143
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/b/ai;->d(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 157
    return-void

    .line 128
    :cond_0
    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    .line 129
    const-string v1, "/p/discover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/cube/a/m$2;->c:Lcom/xueqiu/android/cube/a/m;

    .line 4049
    iget-object v1, v1, Lcom/xueqiu/android/cube/a/m;->b:Landroid/app/Activity;

    .line 130
    const-class v2, Lcom/xueqiu/android/cube/CubeEditorialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    const-string v1, "extra_show_footer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    const-string v1, "extra_editorial_id"

    iget-object v2, p0, Lcom/xueqiu/android/cube/a/m$2;->a:Lcom/xueqiu/android/cube/model/Editorial;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Editorial;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/m$2;->c:Lcom/xueqiu/android/cube/a/m;

    .line 5049
    iget-object v1, v1, Lcom/xueqiu/android/cube/a/m;->b:Landroid/app/Activity;

    .line 133
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/m$2;->a:Lcom/xueqiu/android/cube/model/Editorial;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Editorial;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/a/m$2;->c:Lcom/xueqiu/android/cube/a/m;

    .line 6049
    iget-object v1, v1, Lcom/xueqiu/android/cube/a/m;->b:Landroid/app/Activity;

    .line 135
    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0
.end method
