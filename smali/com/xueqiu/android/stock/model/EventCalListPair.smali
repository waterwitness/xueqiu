.class public Lcom/xueqiu/android/stock/model/EventCalListPair;
.super Ljava/lang/Object;
.source "EventCalListPair.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6fdc6ceb59111531L


# instance fields
.field public mCalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvestmentCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public mEvent:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
