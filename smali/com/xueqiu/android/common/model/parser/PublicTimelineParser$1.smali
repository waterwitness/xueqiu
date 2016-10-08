.class Lcom/xueqiu/android/common/model/parser/PublicTimelineParser$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "PublicTimelineParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/model/parser/PublicTimelineParser;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/community/model/PublicTimeline;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xueqiu/android/common/model/parser/PublicTimelineParser;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/model/parser/PublicTimelineParser;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/xueqiu/android/common/model/parser/PublicTimelineParser$1;->this$0:Lcom/xueqiu/android/common/model/parser/PublicTimelineParser;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
