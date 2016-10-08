.class public Lcom/xueqiu/android/common/model/parser/GParser;
.super Ljava/lang/Object;
.source "GParser.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/model/parser/Parser",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/xueqiu/android/common/model/parser/GParser;->name:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/xueqiu/android/common/model/parser/GParser;->type:Ljava/lang/reflect/Type;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/xueqiu/android/common/model/parser/GParser;->type:Ljava/lang/reflect/Type;

    .line 28
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/common/model/parser/GParser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/common/model/parser/GParser;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/xueqiu/android/common/model/parser/GParser;->name:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setType(Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/xueqiu/android/common/model/parser/GParser;->type:Ljava/lang/reflect/Type;

    .line 51
    return-void
.end method
