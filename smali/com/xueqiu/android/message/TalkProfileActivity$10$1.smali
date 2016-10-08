.class final Lcom/xueqiu/android/message/TalkProfileActivity$10$1;
.super Ljava/lang/Object;
.source "TalkProfileActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/TalkProfileActivity$10;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/snowballfinance/messageplatform/a/z;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/TalkProfileActivity$10;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkProfileActivity$10;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$10$1;->a:Lcom/xueqiu/android/message/TalkProfileActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 196
    check-cast p1, Lcom/snowballfinance/messageplatform/a/z;

    .line 2074
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/z;->e:Ljava/lang/Integer;

    .line 1199
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 1200
    const v0, 0x7f0702fa

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 196
    :cond_0
    return-void
.end method
