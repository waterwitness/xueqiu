.class public Lcom/xueqiu/android/stock/g;
.super Ljava/lang/Object;
.source "InvestmentCalendarActivity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvestmentCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput-object v0, p0, Lcom/xueqiu/android/stock/g;->a:Ljava/util/ArrayList;

    .line 612
    iput-object v0, p0, Lcom/xueqiu/android/stock/g;->b:Ljava/util/ArrayList;

    .line 613
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/stock/g;->c:I

    return-void
.end method
