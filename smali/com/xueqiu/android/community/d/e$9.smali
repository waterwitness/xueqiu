.class final Lcom/xueqiu/android/community/d/e$9;
.super Ljava/lang/Object;
.source "UserProfilePresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/d/e;->f()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/t;

.field final synthetic b:Lcom/xueqiu/android/community/d/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d/e;Lcom/xueqiu/android/base/b/t;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/xueqiu/android/community/d/e$9;->b:Lcom/xueqiu/android/community/d/e;

    iput-object p2, p0, Lcom/xueqiu/android/community/d/e$9;->a:Lcom/xueqiu/android/base/b/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 349
    invoke-static {}, Lcom/xueqiu/android/common/b;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/d/e$9;->b:Lcom/xueqiu/android/community/d/e;

    invoke-static {v1}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/xueqiu/android/community/d/e$9;->a:Lcom/xueqiu/android/base/b/t;

    .line 1966
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/an;->b(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 350
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$9;->b:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->b(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->h()Landroid/app/Dialog;

    .line 351
    return-void
.end method
