Github：[iOS-Academy-SignInWithAppleSwiftUI](https://github.com/RainBowT0506/iOS-Academy-SignInWithAppleSwiftUI)

![CleanShot 2024-07-20 at 05.17.20](https://hackmd.io/_uploads/Sk5euI__0.png)

![CleanShot 2024-07-20 at 05.18.30](https://hackmd.io/_uploads/HkE4OLd_C.png)

# 簡介

- 這段視頻教學介紹了如何在 SwiftUI 中實現 Sign in with Apple 功能。
- 提供了設置 Apple 登錄按鈕、處理登錄請求和結果的詳細步驟。

# 設置 Xcode 項目

- 打開 Xcode 並創建一個新項目，選擇 iOS App 模板。
- 設置項目名稱，例如 "Sign in with Apple SwiftUI"。
- 確保語言設置為 Swift，並且生命週期和界面設置為 SwiftUI。
- 保存項目，並關閉右側面板以擴展 Xcode 窗口。

# 啟用 Sign in with Apple 功能

- 在 Xcode 中，打開 "Signing & Capabilities" 標籤。
- 選擇團隊並添加 Sign in with Apple 能力。
- Xcode 將自動設置相關的配置文件和證書。

# 設置 Sign in with Apple 按鈕

- 創建一個 `NavigationView` 和 `VStack` 包裹 Sign in with Apple 按鈕。
- 導入 `AuthenticationServices` 框架。
- 使用初始化參數設置按鈕標題和處理請求及結果的閉包。
- 設置按鈕的框架高度、邊距和圓角。
- 使用 `@Environment` 屬性監測顏色模式，根據模式設置按鈕樣式。

# 處理登錄請求和結果

- 設置請求的範圍（電子郵件和全名）。
- 處理登錄結果，根據結果進行相應的操作。
- 獲取用戶信息（電子郵件、全名和用戶 ID）。
- 使用 `@AppStorage` 屬性封裝用戶信息，並保存到應用程序存儲中。

# 測試和驗證

- 在模擬器中運行應用程序，確保模擬器已登錄 Apple ID。
- 測試 Sign in with Apple 按鈕，確保能顯示登錄頁面並成功登錄。
- 驗證用戶信息是否正確保存到應用程序存儲中。

# 管理登錄狀態

- 檢查用戶 ID 是否設置來判斷用戶是否已登錄。
- 根據登錄狀態顯示不同的 UI（例如登錄按鈕或用戶賬戶信息）。
- 將按鈕和相關邏輯抽象到單獨的視圖中，保持代碼乾淨和可維護。

# 安全性建議

- 考慮將用戶信息加密後保存到用戶的鑰匙串中，以提高安全性。
- 處理登錄過程中的錯誤情況，確保應用程序的健壯性和用戶體驗。

# 關鍵字
- **Xcode**：Apple 提供的集成開發環境（IDE），用於開發 macOS、iOS、watchOS 和 tvOS 應用程序。
- **SwiftUI**：Apple 提供的一個框架，用於構建 iOS 應用程序的用戶界面，使用宣告式語法。
- **NavigationView**：SwiftUI 中的一個容器，用於管理層級導航。
- **VStack**：SwiftUI 中的一個容器，用於垂直排列子視圖。
- **AuthenticationServices**：Apple 提供的框架，用於處理身份驗證服務，如 Sign in with Apple。
- **Sign in with Apple**：Apple 提供的身份驗證方式，允許用戶使用其 Apple ID 登入應用程序。
- **ASAuthorizationControllerDelegate**：Apple 認證控制器的委託協議，處理認證過程中的回調。
- **Scopes**：指示應用程序希望從用戶那裡獲取哪些信息，如電子郵件和全名。
- **App Storage**：SwiftUI 中的屬性包裝器，用於將數據存儲在應用程序的永久存儲中，如 UserDefaults。
- **@Environment**：SwiftUI 中的屬性包裝器，用於讀取環境值，如色彩模式。
- **Modifier**：SwiftUI 中用於改變視圖外觀和行為的方法。
- **Completion Handler**：Swift 中的一種閉包，用於處理非同步操作完成後的回調。
- **Checked throwing continuation**：Swift Concurrency 的一部分，允許將基於回調的非同步代碼轉換為基於 async/await 的代碼，處理可能的錯誤。
- **UserDefaults**：iOS 提供的一種簡單的數據持久化方法，用於存儲應用程序設置和簡單數據。
- **Keychain**：iOS 提供的一種安全的數據存儲方式，通常用於存儲敏感信息如密碼和憑證。
- **Sign in with Apple Button**：Apple 提供的一種按鈕，用於用戶通過其 Apple ID 登入應用程序。
