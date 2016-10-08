.class public Lcom/xueqiu/android/common/model/SNBEvent;
.super Ljava/lang/Object;
.source "SNBEvent.java"


# static fields
.field public static final EVENT_CLICK:Ljava/lang/String; = "click"

.field public static final EVENT_DOWN:Ljava/lang/String; = "down"

.field public static final EVENT_EXCHANGE:Ljava/lang/String; = "exchange"

.field public static final EVENT_FLUSH:Ljava/lang/String; = "flush"

.field public static final EVENT_REMAIN:Ljava/lang/String; = "remain"

.field public static final EVENT_SHOW:Ljava/lang/String; = "show"

.field public static final EVENT_UP:Ljava/lang/String; = "up"

.field public static final EVENT_ZOOM_IN:Ljava/lang/String; = "zoom_in"

.field public static final EVENT_ZOOM_OUT:Ljava/lang/String; = "zoom_out"


# instance fields
.field private attach:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pageId:I

.field private widgetId:I

.field private widgetPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(III)V

    .line 40
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/model/SNBEvent;->attach:Ljava/util/Map;

    .line 43
    iput p1, p0, Lcom/xueqiu/android/common/model/SNBEvent;->pageId:I

    .line 44
    iput p2, p0, Lcom/xueqiu/android/common/model/SNBEvent;->widgetId:I

    .line 45
    iput p3, p0, Lcom/xueqiu/android/common/model/SNBEvent;->widgetPosition:I

    .line 46
    return-void
.end method

.method public static formatAttach(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 58
    if-nez p0, :cond_0

    .line 59
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 61
    :cond_0
    const-string v0, "action"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    const-string v0, "action"

    const-string v1, "click"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_1
    const-string v0, "platform"

    invoke-static {}, Lcom/xueqiu/android/base/util/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/model/SNBEvent;->attach:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/model/SNBEvent;->attach:Ljava/util/Map;

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/model/SNBEvent;->attach:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAttach()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/common/model/SNBEvent;->attach:Ljava/util/Map;

    return-object v0
.end method

.method public getPageId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/xueqiu/android/common/model/SNBEvent;->pageId:I

    return v0
.end method

.method public getWidgetId()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/xueqiu/android/common/model/SNBEvent;->widgetId:I

    return v0
.end method

.method public setAttach(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    iput-object p1, p0, Lcom/xueqiu/android/common/model/SNBEvent;->attach:Ljava/util/Map;

    .line 94
    return-void
.end method

.method public setPageId(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/xueqiu/android/common/model/SNBEvent;->pageId:I

    .line 82
    return-void
.end method

.method public setWidgetId(I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/xueqiu/android/common/model/SNBEvent;->widgetId:I

    .line 86
    return-void
.end method

.method public setWidgetPosition(I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/xueqiu/android/common/model/SNBEvent;->widgetPosition:I

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/common/model/SNBEvent;->attach:Ljava/util/Map;

    invoke-static {v0}, Lcom/xueqiu/android/common/model/SNBEvent;->formatAttach(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/xueqiu/android/base/util/ax;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\|"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%d|%d|%d|%d|%s|%s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/xueqiu/android/common/model/SNBEvent;->pageId:I

    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/xueqiu/android/common/model/SNBEvent;->widgetId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/xueqiu/android/common/model/SNBEvent;->widgetPosition:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object v0, v4, v5

    const/4 v0, 0x5

    aput-object v1, v4, v0

    .line 52
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    return-object v0
.end method
