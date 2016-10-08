.class final Lcom/xueqiu/android/common/widget/aj$7;
.super Ljava/lang/Object;
.source "ShareSheet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/widget/aj;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/xueqiu/android/common/widget/aj;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/aj;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/aj$7;->c:Lcom/xueqiu/android/common/widget/aj;

    iput-object p2, p0, Lcom/xueqiu/android/common/widget/aj$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xueqiu/android/common/widget/aj$7;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 827
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 828
    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    const-string v0, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj$7;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$7;->c:Lcom/xueqiu/android/common/widget/aj;

    .line 1075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->d:Ljava/lang/String;

    .line 830
    if-eqz v0, :cond_0

    .line 831
    const-string v0, "android.intent.extra.STREAM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/aj$7;->c:Lcom/xueqiu/android/common/widget/aj;

    .line 2075
    iget-object v3, v3, Lcom/xueqiu/android/common/widget/aj;->d:Ljava/lang/String;

    .line 831
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 832
    const-string v0, "image/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$7;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 835
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$7;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$7;->c:Lcom/xueqiu/android/common/widget/aj;

    .line 3075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    .line 836
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 837
    return-void
.end method
