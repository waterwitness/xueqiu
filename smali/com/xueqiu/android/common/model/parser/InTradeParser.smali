.class public Lcom/xueqiu/android/common/model/parser/InTradeParser;
.super Lcom/xueqiu/android/common/model/parser/GParser;
.source "InTradeParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xueqiu/android/common/model/parser/GParser;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 22
    return-void
.end method
