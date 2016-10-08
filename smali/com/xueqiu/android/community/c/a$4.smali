.class final Lcom/xueqiu/android/community/c/a$4;
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
    .line 156
    iput-object p1, p0, Lcom/xueqiu/android/community/c/a$4;->b:Lcom/xueqiu/android/community/c/a;

    iput-object p2, p0, Lcom/xueqiu/android/community/c/a$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xueqiu/android/community/c/a$4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 160
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/xueqiu/android/community/c/a$4;->b:Lcom/xueqiu/android/community/c/a;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/c/a;->a(Landroid/content/Intent;)V

    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/community/c/a$4;->b:Lcom/xueqiu/android/community/c/a;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/a;->c(Lcom/xueqiu/android/community/c/a;)Landroid/app/Application;

    move-result-object v0

    const-string v1, "stockDetail_info_phone"

    .line 1088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    return-void
.end method
