.class final Lcom/xueqiu/android/community/a/y$3;
.super Ljava/lang/Object;
.source "RecommendAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/y;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Lcom/xueqiu/android/base/b/p;

.field final synthetic c:Lcom/xueqiu/android/community/a/y;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/y;Lcom/xueqiu/android/community/model/User;Lcom/xueqiu/android/base/b/p;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/xueqiu/android/community/a/y$3;->c:Lcom/xueqiu/android/community/a/y;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/y$3;->a:Lcom/xueqiu/android/community/model/User;

    iput-object p3, p0, Lcom/xueqiu/android/community/a/y$3;->b:Lcom/xueqiu/android/base/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 382
    iget-object v0, p0, Lcom/xueqiu/android/community/a/y$3;->c:Lcom/xueqiu/android/community/a/y;

    .line 1065
    iget-object v0, v0, Lcom/xueqiu/android/community/a/y;->e:Lcom/xueqiu/android/base/b/ai;

    .line 382
    iget-object v1, p0, Lcom/xueqiu/android/community/a/y$3;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/xueqiu/android/community/a/y$3;->b:Lcom/xueqiu/android/base/b/p;

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->h(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 383
    return-void
.end method
