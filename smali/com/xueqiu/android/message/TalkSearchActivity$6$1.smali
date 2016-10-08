.class final Lcom/xueqiu/android/message/TalkSearchActivity$6$1;
.super Ljava/lang/Object;
.source "TalkSearchActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/TalkSearchActivity$6;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/xueqiu/android/message/TalkSearchActivity$6;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkSearchActivity$6;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkSearchActivity$6$1;->b:Lcom/xueqiu/android/message/TalkSearchActivity$6;

    iput-object p2, p0, Lcom/xueqiu/android/message/TalkSearchActivity$6$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 297
    check-cast p1, Lcom/xueqiu/android/community/model/User;

    check-cast p2, Lcom/xueqiu/android/community/model/User;

    .line 1300
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$6$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkSearchActivity$6$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 297
    return v0
.end method
