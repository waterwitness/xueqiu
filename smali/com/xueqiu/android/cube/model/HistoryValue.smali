.class public Lcom/xueqiu/android/cube/model/HistoryValue;
.super Ljava/lang/Object;
.source "HistoryValue.java"


# instance fields
.field private date:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private label:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private percent:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private time:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private value:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/HistoryValue;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/HistoryValue;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPercent()D
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/HistoryValue;->percent:D

    return-wide v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/HistoryValue;->time:Ljava/util/Date;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/HistoryValue;->value:D

    return-wide v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/HistoryValue;->date:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/HistoryValue;->label:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPercent(D)V
    .locals 1

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/HistoryValue;->percent:D

    .line 64
    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/HistoryValue;->time:Ljava/util/Date;

    .line 40
    return-void
.end method

.method public setValue(D)V
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/HistoryValue;->value:D

    .line 56
    return-void
.end method
