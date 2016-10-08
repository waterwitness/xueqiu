.class final Lcom/xueqiu/android/message/c$36;
.super Ljava/lang/Object;
.source "RecentTalkFragment.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/c;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xueqiu/android/message/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/xueqiu/android/message/c$36;->b:Lcom/xueqiu/android/message/c;

    iput-object p2, p0, Lcom/xueqiu/android/message/c$36;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/xueqiu/android/message/c$36;->b:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/c$36;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a/z;->a(Ljava/util/List;)V

    .line 1149
    return-void
.end method
