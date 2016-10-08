.class final Lcom/xueqiu/android/base/b/e$5;
.super Ljava/lang/Object;
.source "InvestmentCalendarClient.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/e;->a(Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/model/parser/Parser",
        "<",
        "Lcom/xueqiu/android/stock/model/InvestmentCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/e;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/xueqiu/android/base/b/e$5;->a:Lcom/xueqiu/android/base/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 663
    .line 1668
    invoke-static {p1}, Lcom/xueqiu/android/base/b/e;->c(Lorg/json/JSONObject;)Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    move-result-object v0

    .line 663
    return-object v0
.end method

.method public final parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x0

    return-object v0
.end method
