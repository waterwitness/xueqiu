.class final Lcom/xueqiu/android/community/c/o$2;
.super Ljava/lang/Object;
.source "PublicTimelineFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/ptr/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/o;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/o;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/xueqiu/android/community/c/o$2;->a:Lcom/xueqiu/android/community/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$2;->a:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->g(Lcom/xueqiu/android/community/c/o;)V

    .line 287
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x44c

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 288
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 289
    return-void
.end method
