.class public Lcom/xueqiu/android/common/model/ProfileMenuItem;
.super Ljava/lang/Object;
.source "ProfileMenuItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ACTIVITY:Ljava/lang/String; = "ACTIVITY"

.field public static final CUBE:Ljava/lang/String; = "CUBE"

.field public static final FAV:Ljava/lang/String; = "FAV"

.field public static final IDENTIFY:Ljava/lang/String; = "IDENTIFY"

.field public static final NIGHT:Ljava/lang/String; = "NIGHT"

.field public static final ORDER:Ljava/lang/String; = "ORDER"

.field public static final PROFIT:Ljava/lang/String; = "PROFIT"

.field public static final SECURITY:Ljava/lang/String; = "SECURITY"

.field public static final SETTING:Ljava/lang/String; = "SETTING"

.field public static final TRADER:Ljava/lang/String; = "TRADER"

.field public static final WALLET:Ljava/lang/String; = "WALLET"

.field public static final WEB:Ljava/lang/String; = "WEB"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private badge:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private subTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerialVersionUID()J
    .locals 2

    .prologue
    .line 67
    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/common/model/ProfileMenuItem;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/common/model/ProfileMenuItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/common/model/ProfileMenuItem;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xueqiu/android/common/model/ProfileMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/common/model/ProfileMenuItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isBadge()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/xueqiu/android/common/model/ProfileMenuItem;->badge:Z

    return v0
.end method

.method public setBadge(Z)V
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/xueqiu/android/common/model/ProfileMenuItem;->badge:Z

    .line 116
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/xueqiu/android/common/model/ProfileMenuItem;->icon:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/xueqiu/android/common/model/ProfileMenuItem;->name:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/xueqiu/android/common/model/ProfileMenuItem;->subTitle:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/xueqiu/android/common/model/ProfileMenuItem;->title:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/xueqiu/android/common/model/ProfileMenuItem;->url:Ljava/lang/String;

    .line 100
    return-void
.end method
