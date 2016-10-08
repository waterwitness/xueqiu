.class public Lcom/xueqiu/android/common/model/CountryCode;
.super Ljava/lang/Object;
.source "CountryCode.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/IAlphabetSortable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/model/IAlphabetSortable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/xueqiu/android/common/model/CountryCode;",
        ">;"
    }
.end annotation


# instance fields
.field public cnName:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public enName:Ljava/lang/String;

.field public pyName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/xueqiu/android/common/model/CountryCode;->code:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/xueqiu/android/common/model/CountryCode;->enName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/xueqiu/android/common/model/CountryCode;->pyName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/xueqiu/android/common/model/CountryCode;->cnName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xueqiu/android/common/model/CountryCode;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 15
    iget-object v0, p0, Lcom/xueqiu/android/common/model/CountryCode;->pyName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 16
    iget-object v0, p1, Lcom/xueqiu/android/common/model/CountryCode;->pyName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v0, v1

    .line 18
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 19
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v4, v0, :cond_1

    .line 20
    const/4 v1, 0x1

    .line 26
    :cond_0
    :goto_1
    return v1

    .line 22
    :cond_1
    aget-char v4, v2, v0

    aget-char v5, v3, v0

    if-eq v4, v5, :cond_2

    .line 23
    aget-char v1, v2, v0

    aget-char v0, v3, v0

    sub-int/2addr v1, v0

    goto :goto_1

    .line 18
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/xueqiu/android/common/model/CountryCode;

    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/CountryCode;->compareTo(Lcom/xueqiu/android/common/model/CountryCode;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 31
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/xueqiu/android/common/model/CountryCode;

    if-nez v0, :cond_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/model/CountryCode;->code:Ljava/lang/String;

    check-cast p1, Lcom/xueqiu/android/common/model/CountryCode;

    iget-object v1, p1, Lcom/xueqiu/android/common/model/CountryCode;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAlphabets()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/common/model/CountryCode;->pyName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public showName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xueqiu/android/common/model/CountryCode;->cnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "     +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/model/CountryCode;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xueqiu/android/common/model/CountryCode;->cnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/model/CountryCode;->pyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/model/CountryCode;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
