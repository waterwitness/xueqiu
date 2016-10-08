.class final Lcom/xueqiu/android/message/TalkProfileActivity$15;
.super Lcom/xueqiu/android/base/b/p;
.source "TalkProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/TalkProfileActivity;->a(Lcom/xueqiu/android/message/model/IMGroup;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/TalkProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$15;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 326
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 327
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 323
    check-cast p1, Ljava/util/List;

    .line 1331
    if-eqz p1, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$15;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->h(Lcom/xueqiu/android/message/TalkProfileActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xueqiu/android/message/b;->a(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 323
    :cond_0
    return-void
.end method
