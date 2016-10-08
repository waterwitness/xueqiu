.class final Lcom/xueqiu/android/base/util/ap$13;
.super Ljava/lang/Object;
.source "StatusUtil.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/ap;->b(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/ai;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Landroid/content/Context;

.field final synthetic h:Z

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ap$13;->a:Lcom/xueqiu/android/base/b/ai;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/ap$13;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xueqiu/android/base/util/ap$13;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xueqiu/android/base/util/ap$13;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/xueqiu/android/base/util/ap$13;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/xueqiu/android/base/util/ap$13;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/xueqiu/android/base/util/ap$13;->g:Landroid/content/Context;

    iput-boolean p8, p0, Lcom/xueqiu/android/base/util/ap$13;->h:Z

    iput-object p9, p0, Lcom/xueqiu/android/base/util/ap$13;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/xueqiu/android/base/util/ap$13;->j:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 198
    check-cast p1, Lrx/i;

    .line 1201
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$13;->a:Lcom/xueqiu/android/base/b/ai;

    iget-object v1, p0, Lcom/xueqiu/android/base/util/ap$13;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/base/util/ap$13;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/xueqiu/android/base/util/ap$13;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/xueqiu/android/base/util/ap$13;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/xueqiu/android/base/util/ap$13;->f:Ljava/lang/String;

    new-instance v6, Lcom/xueqiu/android/base/util/ap$13$1;

    invoke-direct {v6, p0, p1}, Lcom/xueqiu/android/base/util/ap$13$1;-><init>(Lcom/xueqiu/android/base/util/ap$13;Lrx/i;)V

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 198
    return-void
.end method
