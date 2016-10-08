.class final Lcom/xueqiu/android/community/c/a$5;
.super Ljava/lang/Object;
.source "CompanyProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/a;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/community/c/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/xueqiu/android/community/c/a$5;->b:Lcom/xueqiu/android/community/c/a;

    iput-object p2, p0, Lcom/xueqiu/android/community/c/a$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lcom/xueqiu/android/community/c/a$5;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/xueqiu/android/community/c/a$5;->b:Lcom/xueqiu/android/community/c/a;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/c/a;->a(Landroid/content/Intent;)V

    .line 191
    iget-object v0, p0, Lcom/xueqiu/android/community/c/a$5;->b:Lcom/xueqiu/android/community/c/a;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/a;->d(Lcom/xueqiu/android/community/c/a;)Landroid/app/Application;

    move-result-object v0

    const-string v1, "stockDetail_info_prospectus"

    .line 1088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    return-void
.end method
