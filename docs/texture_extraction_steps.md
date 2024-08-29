# Separating Textures from a 3D Model (.fbx) in Unity

## 1. Import the .fbx File
- Open Unity Hub and launch the project.
- Drag the `.fbx` file into the `Assets` folder within Unity. This will import the model along with any associated textures and materials.

## 2. Extract Textures
- Select the imported `.fbx` model in the `Project` window.
- In the `Inspector` window, locate the model's settings.
- Scroll down to find the `Materials` tab.
- Under the `Materials` tab, there should be an option to `Extract Textures`. If the textures were embedded within the `.fbx` file, this option will be available.
- Click on `Extract Textures`, and Unity will prompt you to select a folder where the textures will be saved.
- Choose or create a new folder in the `Assets` directory for the textures.

## 3. Import and Organize Textures
- Import the extracted textures into Unity if they are not already.
- Place them in a dedicated folder alongside the model, such as `Assets/Textures/ForestFloorTextures/`.

## 4. Apply Textures to Materials
- After extracting and importing the textures, it may be necessary to reassign them to the materials in the model.
- Go to the `Materials` tab in the `Inspector` while the `.fbx` is selected.
- The materials imported with the model will be listed. For each material, the textures should be linked automatically, but if not, manually assign them by dragging the extracted textures into the appropriate slots (e.g., `Albedo`, `Normal Map`, etc.).

## 5. Organize Assets
- For better organization, move the extracted textures into appropriate folders such as `Textures`, `Materials`, and `Models`.

## 6. Verify in the Scene
- Drag the model from the `Project` window into the `Scene` view to verify that the textures have been applied correctly.