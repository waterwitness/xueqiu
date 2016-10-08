.class final Lcom/xueqiu/android/community/a/ak$18;
.super Ljava/lang/Object;
.source "StatusListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/ak;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Status;

.field final synthetic b:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V
    .locals 0

    .prologue
    .line 1541
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$18;->b:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$18;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$18;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/common/b;

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$18;->b:Lcom/xueqiu/android/community/a/ak;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$18;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V

    .line 1547
    :cond_0
    return-void
.end method
